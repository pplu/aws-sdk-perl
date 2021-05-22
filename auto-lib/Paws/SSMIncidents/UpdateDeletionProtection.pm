
package Paws::SSMIncidents::UpdateDeletionProtection;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DeletionProtected => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deletionProtected', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDeletionProtection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateDeletionProtection');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::UpdateDeletionProtectionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::UpdateDeletionProtection - Arguments for method UpdateDeletionProtection on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDeletionProtection on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method UpdateDeletionProtection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDeletionProtection.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $UpdateDeletionProtectionOutput =
      $ssm -incidents->UpdateDeletionProtection(
      Arn               => 'MyArn',
      DeletionProtected => 1,
      ClientToken       => 'MyClientToken',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/UpdateDeletionProtection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the replication set you're updating.



=head2 ClientToken => Str

A token ensuring that the action is called only once with the specified
details.



=head2 B<REQUIRED> DeletionProtected => Bool

Details if deletion protection is enabled or disabled in your account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeletionProtection in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

