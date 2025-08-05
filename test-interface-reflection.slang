public interface IBase
{
    public void step(inout float f);
}

public struct Impl : IBase
{
    public void step(inout float f)
    {
        f += 1.0f;
    }
}