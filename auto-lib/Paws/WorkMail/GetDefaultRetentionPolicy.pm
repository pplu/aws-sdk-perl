
package Paws::WorkMail::GetDefaultRetentionPolicy;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDefaultRetentionPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::GetDefaultRetentionPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetDefaultRetentionPolicy - Arguments for method GetDefaultRetentionPolicy on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDefaultRetentionPolicy on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method GetDefaultRetentionPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDefaultRetentionPolicy.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $GetDefaultRetentionPolicyResponse =
      $workmail->GetDefaultRetentionPolicy(
      OrganizationId => 'MyOrganizationId',

      );

    # Results:
    my $Description = $GetDefaultRetentionPolicyResponse->Description;
    my $FolderConfigurations =
      $GetDefaultRetentionPolicyResponse->FolderConfigurations;
    my $Id   = $GetDefaultRetentionPolicyResponse->Id;
    my $Name = $GetDefaultRetentionPolicyResponse->Name;

    # Returns a L<Paws::WorkMail::GetDefaultRetentionPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/GetDefaultRetentionPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationId => Str

The organization ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDefaultRetentionPolicy in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

