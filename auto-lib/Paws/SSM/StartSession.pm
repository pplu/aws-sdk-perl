
package Paws::SSM::StartSession;
  use Moose;
  has DocumentName => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::SessionManagerParameters');
  has Target => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::StartSessionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StartSession - Arguments for method StartSession on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSession on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method StartSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSession.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $StartSessionResponse = $ssm->StartSession(
      Target       => 'MySessionTarget',
      DocumentName => 'MyDocumentARN',     # OPTIONAL
      Parameters   => {
        'MySessionManagerParameterName' => [
          'MySessionManagerParameterValue', ...    # min: 1, max: 65535
        ],                                         # key: min: 1, max: 255
      },    # OPTIONAL
    );

    # Results:
    my $SessionId  = $StartSessionResponse->SessionId;
    my $StreamUrl  = $StartSessionResponse->StreamUrl;
    my $TokenValue = $StartSessionResponse->TokenValue;

    # Returns a L<Paws::SSM::StartSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/StartSession>

=head1 ATTRIBUTES


=head2 DocumentName => Str

The name of the SSM document to define the parameters and plugin
settings for the session. For example, C<SSM-SessionManagerRunShell>.
If no document name is provided, a shell to the instance is launched by
default.



=head2 Parameters => L<Paws::SSM::SessionManagerParameters>

Reserved for future use.



=head2 B<REQUIRED> Target => Str

The instance to connect to for the session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSession in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

