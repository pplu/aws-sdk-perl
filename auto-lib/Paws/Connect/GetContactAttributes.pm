
package Paws::Connect::GetContactAttributes;
  use Moose;
  has InitialContactId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InitialContactId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContactAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/attributes/{InstanceId}/{InitialContactId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::GetContactAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetContactAttributes - Arguments for method GetContactAttributes on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContactAttributes on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method GetContactAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContactAttributes.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $GetContactAttributesResponse = $connect->GetContactAttributes(
      InitialContactId => 'MyContactId',
      InstanceId       => 'MyInstanceId',

    );

    # Results:
    my $Attributes = $GetContactAttributesResponse->Attributes;

    # Returns a L<Paws::Connect::GetContactAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/GetContactAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InitialContactId => Str

The ID for the initial contact in Amazon Connect associated with the
attributes to update.



=head2 B<REQUIRED> InstanceId => Str

The instance ID for the instance from which to retrieve contact
attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContactAttributes in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

