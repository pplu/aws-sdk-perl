
package Paws::SecurityHub::BatchImportFindingsResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_ImportFindingsError/;
  has FailedCount => (is => 'ro', isa => Int, required => 1);
  has FailedFindings => (is => 'ro', isa => ArrayRef[SecurityHub_ImportFindingsError]);
  has SuccessCount => (is => 'ro', isa => Int, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailedFindings' => {
                                     'type' => 'ArrayRef[SecurityHub_ImportFindingsError]',
                                     'class' => 'Paws::SecurityHub::ImportFindingsError'
                                   },
               'SuccessCount' => {
                                   'type' => 'Int'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedCount' => {
                                  'type' => 'Int'
                                }
             },
  'IsRequired' => {
                    'FailedCount' => 1,
                    'SuccessCount' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchImportFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedCount => Int

The number of findings that failed to import.


=head2 FailedFindings => ArrayRef[SecurityHub_ImportFindingsError]

The list of the findings that failed to import.


=head2 B<REQUIRED> SuccessCount => Int

The number of findings that were successfully imported.


=head2 _request_id => Str


=cut

