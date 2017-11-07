package Paws::SSM::InstancePatchStateFilter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InstancePatchStateFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InstancePatchStateFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InstancePatchStateFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Defines a filter used in DescribeInstancePatchStatesForPatchGroup used
to scope down the information returned by the API.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The key for the filter. Supported values are FailedCount,
InstalledCount, InstalledOtherCount, MissingCount and
NotApplicableCount.


=head2 B<REQUIRED> Type => Str

  The type of comparison that should be performed for the value: Equal,
NotEqual, LessThan or GreaterThan.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  The value for the filter, must be an integer greater than or equal to
0.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

