# Generated from callargs_class.tt

package Paws::RDS::DescribeInstallationMedia;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::RDS::Types qw/RDS_Filter/;
  has Filters => (is => 'ro', isa => ArrayRef[RDS_Filter], predicate => 1);
  has InstallationMediaId => (is => 'ro', isa => Str, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeInstallationMedia');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::InstallationMediaMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeInstallationMediaResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxRecords' => {
                                 'type' => 'Int'
                               },
               'InstallationMediaId' => {
                                          'type' => 'Str'
                                        },
               'Marker' => {
                             'type' => 'Str'
                           },
               'Filters' => {
                              'type' => 'ArrayRef[RDS_Filter]',
                              'class' => 'Paws::RDS::Filter'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeInstallationMedia - Arguments for method DescribeInstallationMedia on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstallationMedia on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeInstallationMedia.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstallationMedia.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $InstallationMediaMessage = $rds->DescribeInstallationMedia(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      InstallationMediaId => 'MyString',    # OPTIONAL
      Marker              => 'MyString',    # OPTIONAL
      MaxRecords          => 1,             # OPTIONAL
    );

    # Results:
    my $InstallationMedia = $InstallationMediaMessage->InstallationMedia;
    my $Marker            = $InstallationMediaMessage->Marker;

    # Returns a L<Paws::RDS::InstallationMediaMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeInstallationMedia>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[RDS_Filter]

A filter that specifies one or more installation media to describe.
Supported filters include the following:

=over

=item *

C<custom-availability-zone-id> - Accepts custom Availability Zone (AZ)
identifiers. The results list includes information about only the
custom AZs identified by these identifiers.

=item *

C<engine> - Accepts database engines. The results list includes
information about only the database engines identified by these
identifiers.

For more information about the valid engines for installation media,
see ImportInstallationMedia.

=back




=head2 InstallationMediaId => Str

The installation medium ID.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

An optional pagination token provided by a previous
DescribeInstallationMedia request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstallationMedia in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

