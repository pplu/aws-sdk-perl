package Paws::XRay::Group;
  use Moose;
  has FilterExpression => (is => 'ro', isa => 'Str');
  has GroupARN => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::Group

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::Group object:

  $service_obj->Method(Att1 => { FilterExpression => $value, ..., GroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::Group object:

  $result = $service_obj->Method(...);
  $result->Att1->FilterExpression

=head1 DESCRIPTION

Details and metadata for a group.

=head1 ATTRIBUTES


=head2 FilterExpression => Str

  The filter expression defining the parameters to include traces.


=head2 GroupARN => Str

  The ARN of the group generated based on the GroupName.


=head2 GroupName => Str

  The unique case-sensitive name of the group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

