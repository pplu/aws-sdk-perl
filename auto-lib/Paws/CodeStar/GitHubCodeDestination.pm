# Generated from default/object.tt
package Paws::CodeStar::GitHubCodeDestination;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CodeStar::Types qw//;
  has Description => (is => 'ro', isa => Str);
  has IssuesEnabled => (is => 'ro', isa => Bool, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Owner => (is => 'ro', isa => Str, required => 1);
  has PrivateRepository => (is => 'ro', isa => Bool, required => 1);
  has Token => (is => 'ro', isa => Str, required => 1);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Token' => 1,
                    'PrivateRepository' => 1,
                    'IssuesEnabled' => 1,
                    'Name' => 1,
                    'Owner' => 1,
                    'Type' => 1
                  },
  'NameInRequest' => {
                       'PrivateRepository' => 'privateRepository',
                       'Token' => 'token',
                       'Description' => 'description',
                       'Type' => 'type',
                       'IssuesEnabled' => 'issuesEnabled',
                       'Owner' => 'owner',
                       'Name' => 'name'
                     },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Owner' => {
                            'type' => 'Str'
                          },
               'IssuesEnabled' => {
                                    'type' => 'Bool'
                                  },
               'Type' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Token' => {
                            'type' => 'Str'
                          },
               'PrivateRepository' => {
                                        'type' => 'Bool'
                                      }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::GitHubCodeDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStar::GitHubCodeDestination object:

  $service_obj->Method(Att1 => { Description => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStar::GitHubCodeDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Information about the GitHub repository to be created in AWS CodeStar.
This is where the source code files provided with the project request
will be uploaded after project creation.

=head1 ATTRIBUTES


=head2 Description => Str

  Description for the GitHub repository to be created in AWS CodeStar.
This description displays in GitHub after the repository is created.


=head2 B<REQUIRED> IssuesEnabled => Bool

  Whether to enable issues for the GitHub repository.


=head2 B<REQUIRED> Name => Str

  Name of the GitHub repository to be created in AWS CodeStar.


=head2 B<REQUIRED> Owner => Str

  The GitHub username for the owner of the GitHub repository to be
created in AWS CodeStar. If this repository should be owned by a GitHub
organization, provide its name.


=head2 B<REQUIRED> PrivateRepository => Bool

  Whether the GitHub repository is to be a private repository.


=head2 B<REQUIRED> Token => Str

  The GitHub user's personal access token for the GitHub repository.


=head2 B<REQUIRED> Type => Str

  The type of GitHub repository to be created in AWS CodeStar. Valid
values are User or Organization.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

