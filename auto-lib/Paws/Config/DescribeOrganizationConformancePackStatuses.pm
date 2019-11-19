# Generated from json/callargs_class.tt

package Paws::Config::DescribeOrganizationConformancePackStatuses;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::Config::Types qw//;
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has OrganizationConformancePackNames => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeOrganizationConformancePackStatuses');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Config::DescribeOrganizationConformancePackStatusesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Limit' => {
                            'type' => 'Int'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'OrganizationConformancePackNames' => {
                                                       'type' => 'ArrayRef[Str|Undef]'
                                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeOrganizationConformancePackStatuses - Arguments for method DescribeOrganizationConformancePackStatuses on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrganizationConformancePackStatuses on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeOrganizationConformancePackStatuses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrganizationConformancePackStatuses.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeOrganizationConformancePackStatusesResponse =
      $config->DescribeOrganizationConformancePackStatuses(
      Limit                            => 1,             # OPTIONAL
      NextToken                        => 'MyString',    # OPTIONAL
      OrganizationConformancePackNames => [
        'MyOrganizationConformancePackName', ...         # min: 1, max: 128
      ],                                                 # OPTIONAL
      );

    # Results:
    my $NextToken =
      $DescribeOrganizationConformancePackStatusesResponse->NextToken;
    my $OrganizationConformancePackStatuses =
      $DescribeOrganizationConformancePackStatusesResponse
      ->OrganizationConformancePackStatuses;

# Returns a L<Paws::Config::DescribeOrganizationConformancePackStatusesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeOrganizationConformancePackStatuses>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of OrganizationConformancePackStatuses returned on
each page. If you do no specify a number, AWS Config uses the default.
The default is 100.



=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.



=head2 OrganizationConformancePackNames => ArrayRef[Str|Undef]

The names of organization conformance packs for which you want status
details. If you do not specify any names, AWS Config returns details
for all your organization conformance packs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrganizationConformancePackStatuses in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

