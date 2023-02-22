import Checkbox from "./Checkbox";

export default function ExperienceLevel() {
  return (
    <div className="flex flex-col w-full mt-7">
      <div className="text-left">
        <p className="text-xs">Experience Level</p>

        {/* Experience Checkboxs */}
        <div className="grid grid-cols-2 grid-rows-2 gap-3 mt-2">
          <Checkbox name="1-2 years" />
          <Checkbox name="3-5 years" />
          <Checkbox name="6-8 years" />
          <Checkbox name="9+ years" />
        </div>
      </div>
    </div>
  );
}
