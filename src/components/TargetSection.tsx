import Checkbox from "./Checkbox";

export default function TargetSection() {
  return (
    <div className="flex flex-col w-full mt-7">
      <div className="text-left">
        <p className="text-xs">Target</p>

        {/* Experience Checkboxs */}
        <div className="grid grid-cols-2 grid-rows-1 gap-3 mt-2">
          <Checkbox name="Freelancer" />
          <Checkbox name="Agency" />
        </div>
      </div>
    </div>
  );
}
