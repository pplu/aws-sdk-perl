# Generated from default/object.tt
package Paws::CodeCommit::RepositoryMetadata;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has AccountId => (is => 'ro', isa => Str);
  has Arn => (is => 'ro', isa => Str);
  has CloneUrlHttp => (is => 'ro', isa => Str);
  has CloneUrlSsh => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has DefaultBranch => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has RepositoryDescription => (is => 'ro', isa => Str);
  has RepositoryId => (is => 'ro', isa => Str);
  has RepositoryName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DefaultBranch' => 'defaultBranch',
                       'RepositoryId' => 'repositoryId',
                       'CloneUrlSsh' => 'cloneUrlSsh',
                       'CreationDate' => 'creationDate',
                       'AccountId' => 'accountId',
                       'RepositoryName' => 'repositoryName',
                       'LastModifiedDate' => 'lastModifiedDate',
                       'CloneUrlHttp' => 'cloneUrlHttp',
                       'RepositoryDescription' => 'repositoryDescription'
                     },
  'types' => {
               'RepositoryDescription' => {
                                            'type' => 'Str'
                                          },
               'CloneUrlHttp' => {
                                   'type' => 'Str'
                                 },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'DefaultBranch' => {
                                    'type' => 'Str'
                                  },
               'Arn' => {
                          'type' => 'Str'
                        },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'RepositoryId' => {
                                   'type' => 'Str'
                                 },
               'CloneUrlSsh' => {
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

Paws::CodeCommit::RepositoryMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::RepositoryMetadata object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::RepositoryMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Information about a repository.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The ID of the AWS account associated with the repository.


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the repository.


=head2 CloneUrlHttp => Str

  The URL to use for cloning the repository over HTTPS.


=head2 CloneUrlSsh => Str

  The URL to use for cloning the repository over SSH.


=head2 CreationDate => Str

  The date and time the repository was created, in timestamp format.


=head2 DefaultBranch => Str

  The repository's default branch name.


=head2 LastModifiedDate => Str

  The date and time the repository was last modified, in timestamp
format.


=head2 RepositoryDescription => Str

  A comment or description about the repository.


=head2 RepositoryId => Str

  The ID of the repository.


=head2 RepositoryName => Str

  The repository's name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

