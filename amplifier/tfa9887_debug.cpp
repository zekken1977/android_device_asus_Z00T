#include <utils/CallStack.h>
#include <stdio.h>

using namespace android;
extern "C" void dump_stack_android(void)
{
	CallStack stack;
	stack.update();
	stack.dump(fileno(stderr), 10, "TfaDump" );
}
