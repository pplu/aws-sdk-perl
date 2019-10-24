# Generated from json/callargs_class.tt

package Paws::WorkMail::UpdateMailboxQuota;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::WorkMail::Types qw//;
  has MailboxQuota => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has OrganizationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateMailboxQuota');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkMail::UpdateMailboxQuotaResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MailboxQuota' => {
                                   'type' => 'Int'
                                 },
               'OrganizationId' => {
                                     'type' => 'Str'
                                   },
               'UserId' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'MailboxQuota' => 1,
                    'OrganizationId' => 1,
                    'UserId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::UpdateMailboxQuota - Arguments for method UpdateMailboxQuota on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMailboxQuota on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method UpdateMailboxQuota.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMailboxQuota.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $UpdateMailboxQuotaResponse = $workmail->UpdateMailboxQuota(
      MailboxQuota   => 1,
      OrganizationId => 'MyOrganizationId',
      UserId         => 'MyWorkMailIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/UpdateMailboxQuota>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MailboxQuota => Int

The updated mailbox quota, in MB, for the specified user.



=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization that contains the user for whom to
update the mailbox quota.



=head2 B<REQUIRED> UserId => Str

The identifer for the user for whom to update the mailbox quota.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMailboxQuota in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

