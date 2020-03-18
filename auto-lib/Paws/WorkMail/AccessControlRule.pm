package Paws::WorkMail::AccessControlRule;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateModified => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Effect => (is => 'ro', isa => 'Str');
  has IpRanges => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has NotActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotIpRanges => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotUserIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::AccessControlRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkMail::AccessControlRule object:

  $service_obj->Method(Att1 => { Actions => $value, ..., UserIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkMail::AccessControlRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

A rule that controls access to an Amazon WorkMail organization.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[Str|Undef]

  Access protocol actions to include in the rule. Valid values include
C<ActiveSync>, C<AutoDiscover>, C<EWS>, C<IMAP>, C<SMTP>,
C<WindowsOutlook>, and C<WebMail>.


=head2 DateCreated => Str

  The date that the rule was created.


=head2 DateModified => Str

  The date that the rule was modified.


=head2 Description => Str

  The rule description.


=head2 Effect => Str

  The rule effect.


=head2 IpRanges => ArrayRef[Str|Undef]

  IPv4 CIDR ranges to include in the rule.


=head2 Name => Str

  The rule name.


=head2 NotActions => ArrayRef[Str|Undef]

  Access protocol actions to exclude from the rule. Valid values include
C<ActiveSync>, C<AutoDiscover>, C<EWS>, C<IMAP>, C<SMTP>,
C<WindowsOutlook>, and C<WebMail>.


=head2 NotIpRanges => ArrayRef[Str|Undef]

  IPv4 CIDR ranges to exclude from the rule.


=head2 NotUserIds => ArrayRef[Str|Undef]

  User IDs to exclude from the rule.


=head2 UserIds => ArrayRef[Str|Undef]

  User IDs to include in the rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

