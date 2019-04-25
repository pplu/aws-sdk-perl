
package Paws::CodeDeploy::RegisterOnPremisesInstance;
  use Moose;
  has IamSessionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamSessionArn' );
  has IamUserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamUserArn' );
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterOnPremisesInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::RegisterOnPremisesInstance - Arguments for method RegisterOnPremisesInstance on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterOnPremisesInstance on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method RegisterOnPremisesInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterOnPremisesInstance.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    $codedeploy->RegisterOnPremisesInstance(
      InstanceName  => 'MyInstanceName',
      IamSessionArn => 'MyIamSessionArn',    # OPTIONAL
      IamUserArn    => 'MyIamUserArn',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/RegisterOnPremisesInstance>

=head1 ATTRIBUTES


=head2 IamSessionArn => Str

The ARN of the IAM session to associate with the on-premises instance.



=head2 IamUserArn => Str

The ARN of the IAM user to associate with the on-premises instance.



=head2 B<REQUIRED> InstanceName => Str

The name of the on-premises instance to register.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterOnPremisesInstance in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

