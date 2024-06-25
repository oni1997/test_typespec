import "@typespec/http";

using TypeSpec.Http;

@service(
    {
        title: "Simple Test API"
        }
)
namespace TestApi {

    model Test {
        id: string;
        title: string;
        completed: boolean;
    }
    
    @route("/tests")
    interface TestOperations {
        @get list(): Test[];
        @post create(@body test: Test): Test;
        @get read(@path id: string): Test;
        @put update(@path id: string, @body test: Test): Test;
        @delete delete(@path id: string): void;
    }

}