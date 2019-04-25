package Paws::IoT::RoleAliasDescription;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', request_name => 'creationDate', traits => ['NameInRequest']);
  has CredentialDurationSeconds => (is => 'ro', isa => 'Int', request_name => 'credentialDurationSeconds', traits => ['NameInRequest']);
  has LastModifiedDate => (is => 'ro', isa => 'Str', request_name => 'lastModifiedDate', traits => ['NameInRequest']);
  has Owner => (is => 'ro', isa => 'Str', request_name => 'owner', traits => ['NameInRequest']);
  has RoleAlias => (is => 'ro', isa => 'Str', request_name => 'roleAlias', traits => ['NameInRequest']);
  has RoleAliasArn => (is => 'ro', isa => 'Str', request_name => 'roleAliasArn', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RoleAliasDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::RoleAliasDescription object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::RoleAliasDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

Role alias description.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  The UNIX timestamp of when the role alias was created.


=head2 CredentialDurationSeconds => Int

  The number of seconds for which the credential is valid.


=head2 LastModifiedDate => Str

  The UNIX timestamp of when the role alias was last modified.


=head2 Owner => Str

  The role alias owner.


=head2 RoleAlias => Str

  The role alias.


=head2 RoleAliasArn => Str

  The ARN of the role alias.


=head2 RoleArn => Str

  The role ARN.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

