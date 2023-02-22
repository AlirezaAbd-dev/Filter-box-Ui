import { MapPinIcon } from "@heroicons/react/24/outline";

export default function LocationInput() {
  return (
    <div className="mt-5 flex flex-col items-start space-y-2">
      <label htmlFor="location" className="text-xs">
        Location
      </label>
      <div className="bg-background flex flex-row w-full border-2 border-border/30 rounded-md">
        <MapPinIcon className="w-10 p-2 text-border" />
        <input
          type="text"
          placeholder="Eg. London"
          className="bg-transparent placeholder:text-border w-full h-10 rounded-md"
        />
      </div>
    </div>
  );
}
