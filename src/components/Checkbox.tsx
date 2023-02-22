"use client";

import { CheckCircleIcon } from "@heroicons/react/24/outline";
import { MouseEventHandler, useState } from "react";

export default function Checkbox(props: { name: string }) {
  const [isChecked, setIsChecked] = useState<boolean>();

  const onChangeHandler: MouseEventHandler<HTMLDivElement> = (e) => {
    setIsChecked((prevState) => !prevState);
  };

  return (
    <div className="flex flex-row space-x-2">
      <div
        className="flex flex-row space-x-1 bg-background border border-border/40 rounded-md w-8"
        onClick={onChangeHandler}
      >
        <input
          id="checkbox"
          type="checkbox"
          className="w-6 h-6 appearance-none"
          checked={isChecked}
        />
        {isChecked && (
          <CheckCircleIcon className="absolute flex justify-center items-center w-[22px] text-border" />
        )}
      </div>
      <p className="text-sm my-auto">{props.name}</p>
    </div>
  );
}
