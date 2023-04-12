#ifdef _MSC_VER
#define DYNAMIC_SYMBOL __declspec(dllexport)
#else
#define DYNAMIC_SYMBOL __attribute__ ((visibility ("default")))
#endif

DYNAMIC_SYMBOL int y;
DYNAMIC_SYMBOL void* p;


int main(){
    y = 1;
    p = (void*)5;
    return 0;
}