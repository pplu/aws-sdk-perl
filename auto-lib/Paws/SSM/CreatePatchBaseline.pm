
package Paws::SSM::CreatePatchBaseline;
  use Moose;
  has ApprovalRules => (is => 'ro', isa => 'Paws::SSM::PatchRuleGroup');
  has ApprovedPatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has GlobalFilters => (is => 'ro', isa => 'Paws::SSM::PatchFilterGroup');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RejectedPatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePatchBaseline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreatePatchBaselineResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreatePatchBaseline - Arguments for method CreatePatchBaseline on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePatchBaseline on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method CreatePatchBaseline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePatchBaseline.

As an example:

  $service_obj->CreatePatchBaseline(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ApprovalRules => L<Paws::SSM::PatchRuleGroup>

A set of rules used to include patches in the baseline.



=head2 ApprovedPatches => ArrayRef[Str|Undef]

A list of explicitly approved patches for the baseline.



=head2 ClientToken => Str

Caller-provided idempotency token.



=head2 Description => Str

A description of the patch baseline.



=head2 GlobalFilters => L<Paws::SSM::PatchFilterGroup>

A set of global filters used to exclude patches from the baseline.



=head2 B<REQUIRED> Name => Str

The name of the patch baseline.



=head2 RejectedPatches => ArrayRef[Str|Undef]

A list of explicitly rejected patches for the baseline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePatchBaseline in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

