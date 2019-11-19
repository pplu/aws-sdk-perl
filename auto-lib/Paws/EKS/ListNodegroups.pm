
package Paws::EKS::ListNodegroups;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::EKS::Types qw//;
  has ClusterName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListNodegroups');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/clusters/{name}/node-groups');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EKS::ListNodegroupsResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ClusterName' => 'name'
                  },
  'ParamInQuery' => {
                      'NextToken' => 'nextToken',
                      'MaxResults' => 'maxResults'
                    },
  'IsRequired' => {
                    'ClusterName' => 1
                  },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'ClusterName' => {
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

Paws::EKS::ListNodegroups - Arguments for method ListNodegroups on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNodegroups on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method ListNodegroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNodegroups.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $ListNodegroupsResponse = $eks->ListNodegroups(
      ClusterName => 'MyString',
      MaxResults  => 1,             # OPTIONAL
      NextToken   => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListNodegroupsResponse->NextToken;
    my $Nodegroups = $ListNodegroupsResponse->Nodegroups;

    # Returns a L<Paws::EKS::ListNodegroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/ListNodegroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the Amazon EKS cluster that you would like to list node
groups in.



=head2 MaxResults => Int

The maximum number of node group results returned by C<ListNodegroups>
in paginated output. When you use this parameter, C<ListNodegroups>
returns only C<maxResults> results in a single page along with a
C<nextToken> response element. You can see the remaining results of the
initial request by sending another C<ListNodegroups> request with the
returned C<nextToken> value. This value can be between 1 and 100. If
you don't use this parameter, C<ListNodegroups> returns up to 100
results and a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListNodegroups> request where C<maxResults> was used and the results
exceeded the value of that parameter. Pagination continues from the end
of the previous results that returned the C<nextToken> value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNodegroups in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

