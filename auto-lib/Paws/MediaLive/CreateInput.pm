
package Paws::MediaLive::CreateInput;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputDestinationRequest]', traits => ['NameInRequest'], request_name => 'destinations');
  has InputSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'inputSecurityGroups');
  has MediaConnectFlows => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::MediaConnectFlowRequest]', traits => ['NameInRequest'], request_name => 'mediaConnectFlows');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputSourceRequest]', traits => ['NameInRequest'], request_name => 'sources');
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::CreateInputResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateInput - Arguments for method CreateInput on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInput on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method CreateInput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInput.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $CreateInputResponse = $medialive->CreateInput(
      Destinations => [
        {
          StreamName => 'My__string',    # OPTIONAL
        },
        ...
      ],                                 # OPTIONAL
      InputSecurityGroups => [
        'My__string', ...                # OPTIONAL
      ],                                 # OPTIONAL
      MediaConnectFlows => [
        {
          FlowArn => 'My__string',       # OPTIONAL
        },
        ...
      ],                                 # OPTIONAL
      Name      => 'My__string',         # OPTIONAL
      RequestId => 'My__string',         # OPTIONAL
      RoleArn   => 'My__string',         # OPTIONAL
      Sources   => [
        {
          PasswordParam => 'My__string',    # OPTIONAL
          Url           => 'My__string',    # OPTIONAL
          Username      => 'My__string',    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      Tags => {
        'My__string' => 'My__string',       # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      Type => 'UDP_PUSH',    # OPTIONAL
    );

    # Results:
    my $Destinations        = $CreateInputResponse->Destinations;
    my $InputSecurityGroups = $CreateInputResponse->InputSecurityGroups;
    my $MediaConnectFlows   = $CreateInputResponse->MediaConnectFlows;
    my $Name                = $CreateInputResponse->Name;
    my $RequestId           = $CreateInputResponse->RequestId;
    my $RoleArn             = $CreateInputResponse->RoleArn;
    my $Sources             = $CreateInputResponse->Sources;
    my $Tags                = $CreateInputResponse->Tags;
    my $Type                = $CreateInputResponse->Type;

    # Returns a L<Paws::MediaLive::CreateInputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/CreateInput>

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::MediaLive::InputDestinationRequest>]

Destination settings for PUSH type inputs.



=head2 InputSecurityGroups => ArrayRef[Str|Undef]

A list of security groups referenced by IDs to attach to the input.



=head2 MediaConnectFlows => ArrayRef[L<Paws::MediaLive::MediaConnectFlowRequest>]

A list of the MediaConnect Flows that you want to use in this input.
You can specify as few as one Flow and presently, as many as two. The
only requirement is when you have more than one is that each Flow is in
a separate Availability Zone as this ensures your EML input is
redundant to AZ issues.



=head2 Name => Str

Name of the input.



=head2 RequestId => Str

Unique identifier of the request to ensure the request is handled
exactly once in case of retries.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role this input assumes during
and after creation.



=head2 Sources => ArrayRef[L<Paws::MediaLive::InputSourceRequest>]

The source URLs for a PULL-type input. Every PULL type input needs
exactly two source URLs for redundancy. Only specify sources for PULL
type Inputs. Leave Destinations empty.



=head2 Tags => L<Paws::MediaLive::Tags>

A collection of key-value pairs.



=head2 Type => Str



Valid values are: C<"UDP_PUSH">, C<"RTP_PUSH">, C<"RTMP_PUSH">, C<"RTMP_PULL">, C<"URL_PULL">, C<"MP4_FILE">, C<"MEDIACONNECT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInput in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

