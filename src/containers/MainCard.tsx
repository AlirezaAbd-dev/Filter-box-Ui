import { ReactNode } from "react";

export default function MainCard({ children }: { children: ReactNode }) {
  return (
    <div className="relative flex flex-col bg-card max-w-md w-80 min-h-30 mt-32 p-10 rounded-3xl z-10 after:content-[''] after:absolute after:w-[80%] after:h-5 after:bg-blueAccent after:top-[-5.2%] after:left-[10%] after:z-0 after:rounded-t-3xl before:content-[''] before:absolute before:w-[80%] before:h-5 before:bg-blueAccent before:bottom-[-5.2%] before:left-[10%] before:z-0 before:rounded-b-3xl">
      {children}
    </div>
  );
}
