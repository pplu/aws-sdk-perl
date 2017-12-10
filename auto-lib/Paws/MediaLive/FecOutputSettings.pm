package Paws::MediaLive::FecOutputSettings;
  use Moose;
  has ColumnDepth => (is => 'ro', isa => 'Int', request_name => 'columnDepth', traits => ['NameInRequest']);
  has IncludeFec => (is => 'ro', isa => 'Str', request_name => 'includeFec', traits => ['NameInRequest']);
  has RowLength => (is => 'ro', isa => 'Int', request_name => 'rowLength', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::FecOutputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::FecOutputSettings object:

  $service_obj->Method(Att1 => { ColumnDepth => $value, ..., RowLength => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::FecOutputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ColumnDepth

=head1 DESCRIPTION

Placeholder documentation for FecOutputSettings

=head1 ATTRIBUTES


=head2 ColumnDepth => Int

  Parameter D from SMPTE 2022-1. The height of the FEC protection matrix.
The number of transport stream packets per column error correction
packet. Must be between 4 and 20, inclusive.


=head2 IncludeFec => Str

  Enables column only or column and row based FEC


=head2 RowLength => Int

  Parameter L from SMPTE 2022-1. The width of the FEC protection matrix.
Must be between 1 and 20, inclusive. If only Column FEC is used, then
larger values increase robustness. If Row FEC is used, then this is the
number of transport stream packets per row error correction packet, and
the value must be between 4 and 20, inclusive, if includeFec is
columnAndRow. If includeFec is column, this value must be 1 to 20,
inclusive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

