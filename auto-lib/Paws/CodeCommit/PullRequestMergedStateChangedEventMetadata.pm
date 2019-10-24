# Generated from default/object.tt
package Paws::CodeCommit::PullRequestMergedStateChangedEventMetadata;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_MergeMetadata/;
  has DestinationReference => (is => 'ro', isa => Str);
  has MergeMetadata => (is => 'ro', isa => CodeCommit_MergeMetadata);
  has RepositoryName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MergeMetadata' => {
                                    'class' => 'Paws::CodeCommit::MergeMetadata',
                                    'type' => 'CodeCommit_MergeMetadata'
                                  },
               'DestinationReference' => {
                                           'type' => 'Str'
                                         },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'MergeMetadata' => 'mergeMetadata',
                       'DestinationReference' => 'destinationReference',
                       'RepositoryName' => 'repositoryName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PullRequestMergedStateChangedEventMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::PullRequestMergedStateChangedEventMetadata object:

  $service_obj->Method(Att1 => { DestinationReference => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::PullRequestMergedStateChangedEventMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationReference

=head1 DESCRIPTION

Returns information about the change in the merge state for a pull
request event.

=head1 ATTRIBUTES


=head2 DestinationReference => Str

  The name of the branch that the pull request will be merged into.


=head2 MergeMetadata => CodeCommit_MergeMetadata

  Information about the merge state change event.


=head2 RepositoryName => Str

  The name of the repository where the pull request was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

