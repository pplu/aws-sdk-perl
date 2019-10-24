# Generated from default/object.tt
package Paws::Amplify::ProductionBranch;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw//;
  has BranchName => (is => 'ro', isa => Str);
  has LastDeployTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has ThumbnailUrl => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThumbnailUrl' => {
                                   'type' => 'Str'
                                 },
               'BranchName' => {
                                 'type' => 'Str'
                               },
               'Status' => {
                             'type' => 'Str'
                           },
               'LastDeployTime' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'ThumbnailUrl' => 'thumbnailUrl',
                       'BranchName' => 'branchName',
                       'Status' => 'status',
                       'LastDeployTime' => 'lastDeployTime'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ProductionBranch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::ProductionBranch object:

  $service_obj->Method(Att1 => { BranchName => $value, ..., ThumbnailUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::ProductionBranch object:

  $result = $service_obj->Method(...);
  $result->Att1->BranchName

=head1 DESCRIPTION

Structure with Production Branch information.

=head1 ATTRIBUTES


=head2 BranchName => Str

  Branch Name for Production Branch.


=head2 LastDeployTime => Str

  Last Deploy Time of Production Branch.


=head2 Status => Str

  Status of Production Branch.


=head2 ThumbnailUrl => Str

  Thumbnail URL for Production Branch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

