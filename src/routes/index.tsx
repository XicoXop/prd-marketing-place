import { createFileRoute } from "@tanstack/react-router";

export const Route = createFileRoute("/")({
  component: Index,
});

function Index() {
  return (
    <main className="h-screen w-screen overflow-hidden bg-white">
      <iframe
        title="Calculadora de Margem OPL8"
        src="/calculadora-opl8.html"
        className="block h-full w-full border-0"
        style={{ height: "100dvh" }}
      />
    </main>
  );
}
