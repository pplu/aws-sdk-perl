# Generated from json/callresult_class.tt

package Paws::DS::GetDirectoryLimitsResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw/DS_DirectoryLimits/;
  has DirectoryLimits => (is => 'ro', isa => DS_DirectoryLimits);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DirectoryLimits' => {
                                      'class' => 'Paws::DS::DirectoryLimits',
                                      'type' => 'DS_DirectoryLimits'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DS::GetDirectoryLimitsResult

=head1 ATTRIBUTES


=head2 DirectoryLimits => DS_DirectoryLimits

A DirectoryLimits object that contains the directory limits for the
current region.


=head2 _request_id => Str


=cut

1;