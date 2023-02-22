import { ReactNode } from "react";

export default function MainLayout({ children }: { children: ReactNode }) {
  return (
    <main className="font-lato h-screen w-screen flex items-start justify-center bg-background text-indigo-200 overflow-auto">
      {children}
    </main>
  );
}
