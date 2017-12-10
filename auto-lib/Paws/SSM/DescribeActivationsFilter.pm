package Paws::SSM::DescribeActivationsFilter;
  use Moose;
  has FilterKey => (is => 'ro', isa => 'Str');
  has FilterValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeActivationsFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::DescribeActivationsFilter object:

  $service_obj->Method(Att1 => { FilterKey => $value, ..., FilterValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::DescribeActivationsFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->FilterKey

=head1 DESCRIPTION

Filter for the DescribeActivation API.

=head1 ATTRIBUTES


=head2 FilterKey => Str

  The name of the filter.


=head2 FilterValues => ArrayRef[Str|Undef]

  The filter values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

