
package Paws::RedShift::DescribeClusterTracks;
  use Moose;
  has MaintenanceTrackName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterTracks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::TrackListMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterTracksResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeClusterTracks - Arguments for method DescribeClusterTracks on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClusterTracks on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeClusterTracks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClusterTracks.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $TrackListMessage = $redshift->DescribeClusterTracks(
      MaintenanceTrackName => 'MyString',    # OPTIONAL
      Marker               => 'MyString',    # OPTIONAL
      MaxRecords           => 1,             # OPTIONAL
    );

    # Results:
    my $MaintenanceTracks = $TrackListMessage->MaintenanceTracks;
    my $Marker            = $TrackListMessage->Marker;

    # Returns a L<Paws::RedShift::TrackListMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeClusterTracks>

=head1 ATTRIBUTES


=head2 MaintenanceTrackName => Str

The name of the maintenance track.



=head2 Marker => Str

An optional parameter that specifies the starting point to return a set
of response records. When the results of a C<DescribeClusterTracks>
request exceed the value specified in C<MaxRecords>, Amazon Redshift
returns a value in the C<Marker> field of the response. You can
retrieve the next set of response records by providing the returned
marker value in the C<Marker> parameter and retrying the request.



=head2 MaxRecords => Int

An integer value for the maximum number of maintenance tracks to
return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClusterTracks in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

