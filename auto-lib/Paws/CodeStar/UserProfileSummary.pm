# Generated from default/object.tt
package Paws::CodeStar::UserProfileSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStar::Types qw//;
  has DisplayName => (is => 'ro', isa => Str);
  has EmailAddress => (is => 'ro', isa => Str);
  has SshPublicKey => (is => 'ro', isa => Str);
  has UserArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'UserArn' => 'userArn',
                       'EmailAddress' => 'emailAddress',
                       'DisplayName' => 'displayName',
                       'SshPublicKey' => 'sshPublicKey'
                     },
  'types' => {
               'UserArn' => {
                              'type' => 'Str'
                            },
               'EmailAddress' => {
                                   'type' => 'Str'
                                 },
               'SshPublicKey' => {
                                   'type' => 'Str'
                                 },
               'DisplayName' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::UserProfileSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStar::UserProfileSummary object:

  $service_obj->Method(Att1 => { DisplayName => $value, ..., UserArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStar::UserProfileSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DisplayName

=head1 DESCRIPTION

Information about a user's profile in AWS CodeStar.

=head1 ATTRIBUTES


=head2 DisplayName => Str

  The display name of a user in AWS CodeStar. For example, this could be
set to both first and last name ("Mary Major") or a single name
("Mary"). The display name is also used to generate the initial icon
associated with the user in AWS CodeStar projects. If spaces are
included in the display name, the first character that appears after
the space will be used as the second character in the user initial
icon. The initial icon displays a maximum of two characters, so a
display name with more than one space (for example "Mary Jane Major")
would generate an initial icon using the first character and the first
character after the space ("MJ", not "MM").


=head2 EmailAddress => Str

  The email address associated with the user.


=head2 SshPublicKey => Str

  The SSH public key associated with the user in AWS CodeStar. If a
project owner allows the user remote access to project resources, this
public key will be used along with the user's private key for SSH
access.


=head2 UserArn => Str

  The Amazon Resource Name (ARN) of the user in IAM.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

