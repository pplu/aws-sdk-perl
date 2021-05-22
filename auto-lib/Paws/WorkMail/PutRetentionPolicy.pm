
package Paws::WorkMail::PutRetentionPolicy;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has FolderConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::FolderConfiguration]', required => 1);
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRetentionPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::PutRetentionPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::PutRetentionPolicy - Arguments for method PutRetentionPolicy on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRetentionPolicy on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method PutRetentionPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRetentionPolicy.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $PutRetentionPolicyResponse = $workmail->PutRetentionPolicy(
      FolderConfigurations => [
        {
          Action => 'NONE',    # values: NONE, DELETE, PERMANENTLY_DELETE
          Name   => 'INBOX'
          ,    # values: INBOX, DELETED_ITEMS, SENT_ITEMS, DRAFTS, JUNK_EMAIL
          Period => 1,    # min: 1, max: 730; OPTIONAL
        },
        ...
      ],
      Name           => 'MyShortString',
      OrganizationId => 'MyOrganizationId',
      Description    => 'MyPolicyDescription',    # OPTIONAL
      Id             => 'MyShortString',          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/PutRetentionPolicy>

=head1 ATTRIBUTES


=head2 Description => Str

The retention policy description.



=head2 B<REQUIRED> FolderConfigurations => ArrayRef[L<Paws::WorkMail::FolderConfiguration>]

The retention policy folder configurations.



=head2 Id => Str

The retention policy ID.



=head2 B<REQUIRED> Name => Str

The retention policy name.



=head2 B<REQUIRED> OrganizationId => Str

The organization ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRetentionPolicy in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

