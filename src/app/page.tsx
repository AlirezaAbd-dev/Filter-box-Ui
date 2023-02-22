"use client";
import ExperienceLevel from "@/components/ExperienceLevel";
import LocationInput from "@/components/LocationInput";
import TargetSection from "@/components/TargetSection";
import Title from "@/components/ui/Title";
import MainCard from "@/containers/MainCard";
import MainLayout from "@/layouts/MainLayout";
export default function Home() {
  return (
    <MainLayout>
      {/* Card Container */}
      <MainCard>
        <Title />
        {/* Location Container */}
        <LocationInput />

        {/* Experience Level Container */}
        <ExperienceLevel />

        {/* Target Container */}
        <TargetSection />
      </MainCard>
    </MainLayout>
  );
}
