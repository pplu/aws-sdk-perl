package Paws::DLM::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type DLM_CreateLifecyclePolicyRequest, { class => 'Paws::DLM::CreateLifecyclePolicyRequest' };
  class_type DLM_CreateLifecyclePolicyResponse, { class => 'Paws::DLM::CreateLifecyclePolicyResponse' };
  class_type DLM_CreateRule, { class => 'Paws::DLM::CreateRule' };
  class_type DLM_DeleteLifecyclePolicyRequest, { class => 'Paws::DLM::DeleteLifecyclePolicyRequest' };
  class_type DLM_DeleteLifecyclePolicyResponse, { class => 'Paws::DLM::DeleteLifecyclePolicyResponse' };
  class_type DLM_GetLifecyclePoliciesRequest, { class => 'Paws::DLM::GetLifecyclePoliciesRequest' };
  class_type DLM_GetLifecyclePoliciesResponse, { class => 'Paws::DLM::GetLifecyclePoliciesResponse' };
  class_type DLM_GetLifecyclePolicyRequest, { class => 'Paws::DLM::GetLifecyclePolicyRequest' };
  class_type DLM_GetLifecyclePolicyResponse, { class => 'Paws::DLM::GetLifecyclePolicyResponse' };
  class_type DLM_InternalServerException, { class => 'Paws::DLM::InternalServerException' };
  class_type DLM_InvalidRequestException, { class => 'Paws::DLM::InvalidRequestException' };
  class_type DLM_LifecyclePolicy, { class => 'Paws::DLM::LifecyclePolicy' };
  class_type DLM_LifecyclePolicySummary, { class => 'Paws::DLM::LifecyclePolicySummary' };
  class_type DLM_LimitExceededException, { class => 'Paws::DLM::LimitExceededException' };
  class_type DLM_Parameters, { class => 'Paws::DLM::Parameters' };
  class_type DLM_PolicyDetails, { class => 'Paws::DLM::PolicyDetails' };
  class_type DLM_ResourceNotFoundException, { class => 'Paws::DLM::ResourceNotFoundException' };
  class_type DLM_RetainRule, { class => 'Paws::DLM::RetainRule' };
  class_type DLM_Schedule, { class => 'Paws::DLM::Schedule' };
  class_type DLM_Tag, { class => 'Paws::DLM::Tag' };
  class_type DLM_UpdateLifecyclePolicyRequest, { class => 'Paws::DLM::UpdateLifecyclePolicyRequest' };
  class_type DLM_UpdateLifecyclePolicyResponse, { class => 'Paws::DLM::UpdateLifecyclePolicyResponse' };

1;
