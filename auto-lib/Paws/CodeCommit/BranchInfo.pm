# Generated from default/object.tt
package Paws::CodeCommit::BranchInfo;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has BranchName => (is => 'ro', isa => Str);
  has CommitId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BranchName' => {
                                 'type' => 'Str'
                               },
               'CommitId' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'BranchName' => 'branchName',
                       'CommitId' => 'commitId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BranchInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::BranchInfo object:

  $service_obj->Method(Att1 => { BranchName => $value, ..., CommitId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::BranchInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->BranchName

=head1 DESCRIPTION

Returns information about a branch.

=head1 ATTRIBUTES


=head2 BranchName => Str

  The name of the branch.


=head2 CommitId => Str

  The ID of the last commit made to the branch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

