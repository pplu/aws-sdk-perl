
package Paws::SSM::CreateActivation;
  use Moose;
  has DefaultInstanceName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has IamRole => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationLimit => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateActivation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateActivationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateActivation - Arguments for method CreateActivation on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateActivation on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method CreateActivation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateActivation.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $CreateActivationResult = $ssm->CreateActivation(
      IamRole             => 'MyIamRole',
      DefaultInstanceName => 'MyDefaultInstanceName',      # OPTIONAL
      Description         => 'MyActivationDescription',    # OPTIONAL
      ExpirationDate      => '1970-01-01T01:00:00',        # OPTIONAL
      RegistrationLimit   => 1,                            # OPTIONAL
    );

    # Results:
    my $ActivationCode = $CreateActivationResult->ActivationCode;
    my $ActivationId   = $CreateActivationResult->ActivationId;

    # Returns a L<Paws::SSM::CreateActivationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/CreateActivation>

=head1 ATTRIBUTES


=head2 DefaultInstanceName => Str

The name of the registered, managed instance as it will appear in the
Amazon EC2 console or when you use the AWS command line tools to list
EC2 resources.

Do not enter personally identifiable information in this field.



=head2 Description => Str

A user-defined description of the resource that you want to register
with Amazon EC2.

Do not enter personally identifiable information in this field.



=head2 ExpirationDate => Str

The date by which this activation request should expire. The default
value is 24 hours.



=head2 B<REQUIRED> IamRole => Str

The Amazon Identity and Access Management (IAM) role that you want to
assign to the managed instance.



=head2 RegistrationLimit => Int

Specify the maximum number of managed instances you want to register.
The default value is 1 instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateActivation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

