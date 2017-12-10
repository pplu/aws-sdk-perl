package Paws::SSM::PatchBaselineIdentity;
  use Moose;
  has BaselineDescription => (is => 'ro', isa => 'Str');
  has BaselineId => (is => 'ro', isa => 'Str');
  has BaselineName => (is => 'ro', isa => 'Str');
  has DefaultBaseline => (is => 'ro', isa => 'Bool');
  has OperatingSystem => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PatchBaselineIdentity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::PatchBaselineIdentity object:

  $service_obj->Method(Att1 => { BaselineDescription => $value, ..., OperatingSystem => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::PatchBaselineIdentity object:

  $result = $service_obj->Method(...);
  $result->Att1->BaselineDescription

=head1 DESCRIPTION

Defines the basic information about a patch baseline.

=head1 ATTRIBUTES


=head2 BaselineDescription => Str

  The description of the patch baseline.


=head2 BaselineId => Str

  The ID of the patch baseline.


=head2 BaselineName => Str

  The name of the patch baseline.


=head2 DefaultBaseline => Bool

  Whether this is the default baseline. Note that Systems Manager
supports creating multiple default patch baselines. For example, you
can create a default patch baseline for each operating system.


=head2 OperatingSystem => Str

  Defines the operating system the patch baseline applies to. The Default
value is WINDOWS.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

