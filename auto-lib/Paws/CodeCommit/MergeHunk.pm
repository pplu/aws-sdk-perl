# Generated from default/object.tt
package Paws::CodeCommit::MergeHunk;
  use Moo;
  use Types::Standard qw/Bool/;
  use Paws::CodeCommit::Types qw/CodeCommit_MergeHunkDetail/;
  has Base => (is => 'ro', isa => CodeCommit_MergeHunkDetail);
  has Destination => (is => 'ro', isa => CodeCommit_MergeHunkDetail);
  has IsConflict => (is => 'ro', isa => Bool);
  has Source => (is => 'ro', isa => CodeCommit_MergeHunkDetail);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Base' => {
                           'class' => 'Paws::CodeCommit::MergeHunkDetail',
                           'type' => 'CodeCommit_MergeHunkDetail'
                         },
               'Source' => {
                             'class' => 'Paws::CodeCommit::MergeHunkDetail',
                             'type' => 'CodeCommit_MergeHunkDetail'
                           },
               'Destination' => {
                                  'class' => 'Paws::CodeCommit::MergeHunkDetail',
                                  'type' => 'CodeCommit_MergeHunkDetail'
                                },
               'IsConflict' => {
                                 'type' => 'Bool'
                               }
             },
  'NameInRequest' => {
                       'IsConflict' => 'isConflict',
                       'Source' => 'source',
                       'Base' => 'base',
                       'Destination' => 'destination'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergeHunk

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::MergeHunk object:

  $service_obj->Method(Att1 => { Base => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::MergeHunk object:

  $result = $service_obj->Method(...);
  $result->Att1->Base

=head1 DESCRIPTION

Information about merge hunks in a merge or pull request operation.

=head1 ATTRIBUTES


=head2 Base => CodeCommit_MergeHunkDetail

  Information about the merge hunk in the base of a merge or pull
request.


=head2 Destination => CodeCommit_MergeHunkDetail

  Information about the merge hunk in the destination of a merge or pull
request.


=head2 IsConflict => Bool

  A Boolean value indicating whether a combination of hunks contains a
conflict. Conflicts occur when the same file or the same lines in a
file were modified in both the source and destination of a merge or
pull request. Valid values include true, false, and null. This will be
true when the hunk represents a conflict and one or more files contains
a line conflict. File mode conflicts in a merge will not set this to be
true.


=head2 Source => CodeCommit_MergeHunkDetail

  Information about the merge hunk in the source of a merge or pull
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

