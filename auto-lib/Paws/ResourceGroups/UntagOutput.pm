
package Paws::ResourceGroups::UntagOutput;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::ResourceGroups::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has Keys => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        },
               'Keys' => {
                           'type' => 'ArrayRef[Str|Undef]'
                         },
               '_request_id' => {
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

Paws::ResourceGroups::UntagOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the resource from which tags have been removed.


=head2 Keys => ArrayRef[Str|Undef]

The keys of tags that have been removed.


=head2 _request_id => Str


=cut

