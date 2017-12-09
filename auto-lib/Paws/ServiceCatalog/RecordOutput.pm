package Paws::ServiceCatalog::RecordOutput;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has OutputKey => (is => 'ro', isa => 'Str');
  has OutputValue => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::RecordOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::RecordOutput object:

  $service_obj->Method(Att1 => { Description => $value, ..., OutputValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::RecordOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

The output for the product created as the result of a request. For
example, the output for a CloudFormation-backed product that creates an
S3 bucket would include the S3 bucket URL.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the output.


=head2 OutputKey => Str

  The output key.


=head2 OutputValue => Str

  The output value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

