
package Paws::MediaLive::CreatePartnerInput;
  use Moose;
  has InputId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'inputId', required => 1);
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePartnerInput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputs/{inputId}/partners');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::CreatePartnerInputResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreatePartnerInput - Arguments for method CreatePartnerInput on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePartnerInput on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method CreatePartnerInput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePartnerInput.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $CreatePartnerInputResponse = $medialive->CreatePartnerInput(
      InputId   => 'My__string',
      RequestId => 'My__string',                         # OPTIONAL
      Tags      => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Input = $CreatePartnerInputResponse->Input;

    # Returns a L<Paws::MediaLive::CreatePartnerInputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/CreatePartnerInput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputId => Str

Unique ID of the input.



=head2 RequestId => Str

Unique identifier of the request to ensure the request is handled
exactly once in case of retries.



=head2 Tags => L<Paws::MediaLive::Tags>

A collection of key-value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePartnerInput in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

