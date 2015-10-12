package Paws::CodeCommit::BranchInfo;
  use Moose;
  has branchName => (is => 'ro', isa => 'Str');
  has commitId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BranchInfo

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::BranchInfo object:

  $service_obj->Method(Att1 => { branchName => $value, ..., commitId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::BranchInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->branchName

=head1 ATTRIBUTES

=head2 branchName => Str

  

The name of the branch.










=head2 commitId => Str

  

The ID of the last commit made to the branch.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

