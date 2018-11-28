
package Paws::CodeDeploy::CreateApplication;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has ComputePlatform => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'computePlatform' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::CreateApplicationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateApplication - Arguments for method CreateApplication on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $CreateApplicationOutput = $codedeploy->CreateApplication(
      ApplicationName => 'MyApplicationName',
      ComputePlatform => 'Server',              # OPTIONAL
    );

    # Results:
    my $ApplicationId = $CreateApplicationOutput->ApplicationId;

    # Returns a L<Paws::CodeDeploy::CreateApplicationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/CreateApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application. This name must be unique with the
applicable IAM user or AWS account.



=head2 ComputePlatform => Str

The destination platform type for the deployment (C<Lambda> or
C<Server>).

Valid values are: C<"Server">, C<"Lambda">, C<"ECS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

