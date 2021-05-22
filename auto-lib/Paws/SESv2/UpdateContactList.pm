
package Paws::SESv2::UpdateContactList;
  use Moose;
  has ContactListName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactListName', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Topics => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Topic]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContactList');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/contact-lists/{ContactListName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::UpdateContactListResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::UpdateContactList - Arguments for method UpdateContactList on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContactList on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method UpdateContactList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContactList.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $UpdateContactListResponse = $email->UpdateContactList(
      ContactListName => 'MyContactListName',
      Description     => 'MyDescription',       # OPTIONAL
      Topics          => [
        {
          DefaultSubscriptionStatus => 'OPT_IN',       # values: OPT_IN, OPT_OUT
          DisplayName               => 'MyDisplayName',
          TopicName                 => 'MyTopicName',
          Description               => 'MyDescription',
        },
        ...
      ],                                               # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/UpdateContactList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactListName => Str

The name of the contact list.



=head2 Description => Str

A description of what the contact list is about.



=head2 Topics => ArrayRef[L<Paws::SESv2::Topic>]

An interest group, theme, or label within a list. A contact list can
have multiple topics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContactList in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

