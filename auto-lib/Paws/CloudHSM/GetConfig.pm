
package Paws::CloudHSM::GetConfig;
  use Moose;
  has ClientArn => (is => 'ro', isa => 'Str', required => 1);
  has ClientVersion => (is => 'ro', isa => 'Str', required => 1);
  has HapgList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSM::GetConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::GetConfig - Arguments for method GetConfig on L<Paws::CloudHSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfig on the
L<Amazon CloudHSM|Paws::CloudHSM> service. Use the attributes of this class
as arguments to method GetConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfig.

=head1 SYNOPSIS

    my $cloudhsm = Paws->service('CloudHSM');
    my $GetConfigResponse = $cloudhsm->GetConfig(
      ClientArn     => 'MyClientArn',
      ClientVersion => '5.1',
      HapgList      => [ 'MyHapgArn', ... ],

    );

    # Results:
    my $ConfigCred = $GetConfigResponse->ConfigCred;
    my $ConfigFile = $GetConfigResponse->ConfigFile;
    my $ConfigType = $GetConfigResponse->ConfigType;

    # Returns a L<Paws::CloudHSM::GetConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsm/GetConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientArn => Str

The ARN of the client.



=head2 B<REQUIRED> ClientVersion => Str

The client version.

Valid values are: C<"5.1">, C<"5.3">

=head2 B<REQUIRED> HapgList => ArrayRef[Str|Undef]

A list of ARNs that identify the high-availability partition groups
that are associated with the client.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfig in L<Paws::CloudHSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

