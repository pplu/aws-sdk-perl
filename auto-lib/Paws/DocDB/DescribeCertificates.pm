# Generated from callargs_class.tt

package Paws::DocDB::DescribeCertificates;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::DocDB::Types qw/DocDB_Filter/;
  has CertificateIdentifier => (is => 'ro', isa => Str, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[DocDB_Filter], predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeCertificates');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DocDB::CertificateMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeCertificatesResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CertificateIdentifier' => {
                                            'type' => 'Str'
                                          },
               'Filters' => {
                              'class' => 'Paws::DocDB::Filter',
                              'type' => 'ArrayRef[DocDB_Filter]'
                            },
               'Marker' => {
                             'type' => 'Str'
                           },
               'MaxRecords' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DescribeCertificates - Arguments for method DescribeCertificates on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCertificates on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method DescribeCertificates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCertificates.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $CertificateMessage = $rds->DescribeCertificates(
      CertificateIdentifier => 'MyString',    # OPTIONAL
      Filters               => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                      # OPTIONAL
      Marker     => 'MyString',               # OPTIONAL
      MaxRecords => 1,                        # OPTIONAL
    );

    # Results:
    my $Certificates = $CertificateMessage->Certificates;
    my $Marker       = $CertificateMessage->Marker;

    # Returns a L<Paws::DocDB::CertificateMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeCertificates>

=head1 ATTRIBUTES


=head2 CertificateIdentifier => Str

The user-supplied certificate identifier. If this parameter is
specified, information for only the specified certificate is returned.
If this parameter is omitted, a list of up to C<MaxRecords>
certificates is returned. This parameter is not case sensitive.

Constraints

=over

=item *

Must match an existing C<CertificateIdentifier>.

=back




=head2 Filters => ArrayRef[DocDB_Filter]

This parameter is not currently supported.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeCertificates> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints:

=over

=item *

Minimum: 20

=item *

Maximum: 100

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCertificates in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

