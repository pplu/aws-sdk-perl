package Paws::ServiceCatalog::TagOptionSummary;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::TagOptionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::TagOptionSummary object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::TagOptionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

The TagOption summary key-value pair.

=head1 ATTRIBUTES


=head2 Key => Str

  The TagOptionSummary key.


=head2 Values => ArrayRef[Str|Undef]

  The TagOptionSummary value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

