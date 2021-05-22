
package Paws::Honeycode::InvokeScreenAutomationResult;
  use Moose;
  has WorkbookCursor => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'workbookCursor', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::InvokeScreenAutomationResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkbookCursor => Int

The updated workbook cursor after performing the automation action.


=head2 _request_id => Str


=cut

