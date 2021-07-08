
package Paws::Route53::ChangeResourceRecordSets;
  use Moose;
  has ChangeBatch => (is => 'ro', isa => 'Paws::Route53::ChangeBatch', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeResourceRecordSets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone/{Id}/rrset/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ChangeResourceRecordSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'ChangeResourceRecordSetsRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'https://route53.amazonaws.com/doc/2013-04-01/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ChangeResourceRecordSets - Arguments for method ChangeResourceRecordSets on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChangeResourceRecordSets on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ChangeResourceRecordSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChangeResourceRecordSets.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    # To create a basic resource record set
    # The following example creates a resource record set that routes Internet
    # traffic to a resource with an IP address of 192.0.2.44.
    my $ChangeResourceRecordSetsResponse = $route53->ChangeResourceRecordSets(
      'ChangeBatch' => {
        'Changes' => [

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'Name'            => 'example.com',
              'ResourceRecords' => [

                {
                  'Value' => '192.0.2.44'
                }
              ],
              'TTL'  => 60,
              'Type' => 'A'
            }
          }
        ],
        'Comment' => 'Web server for example.com'
      },
      'HostedZoneId' => 'Z3M3LMPEXAMPLE'
    );

    # Results:
    my $ChangeInfo = $ChangeResourceRecordSetsResponse->ChangeInfo;

 # Returns a L<Paws::Route53::ChangeResourceRecordSetsResponse> object.
 # To create weighted resource record sets
 # The following example creates two weighted resource record sets. The resource
 # with a Weight of 100 will get 1/3rd of traffic (100/100+200), and the other
 # resource will get the rest of the traffic for example.com.
    my $ChangeResourceRecordSetsResponse = $route53->ChangeResourceRecordSets(
      'ChangeBatch' => {
        'Changes' => [

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'HealthCheckId'   => 'abcdef11-2222-3333-4444-555555fedcba',
              'Name'            => 'example.com',
              'ResourceRecords' => [

                {
                  'Value' => '192.0.2.44'
                }
              ],
              'SetIdentifier' => 'Seattle data center',
              'TTL'           => 60,
              'Type'          => 'A',
              'Weight'        => 100
            }
          },

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'HealthCheckId'   => 'abcdef66-7777-8888-9999-000000fedcba',
              'Name'            => 'example.com',
              'ResourceRecords' => [

                {
                  'Value' => '192.0.2.45'
                }
              ],
              'SetIdentifier' => 'Portland data center',
              'TTL'           => 60,
              'Type'          => 'A',
              'Weight'        => 200
            }
          }
        ],
        'Comment' => 'Web servers for example.com'
      },
      'HostedZoneId' => 'Z3M3LMPEXAMPLE'
    );

    # Results:
    my $ChangeInfo = $ChangeResourceRecordSetsResponse->ChangeInfo;

# Returns a L<Paws::Route53::ChangeResourceRecordSetsResponse> object.
# To create an alias resource record set
# The following example creates an alias resource record set that routes traffic
# to a CloudFront distribution.
    my $ChangeResourceRecordSetsResponse = $route53->ChangeResourceRecordSets(
      'ChangeBatch' => {
        'Changes' => [

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'AliasTarget' => {
                'DNSName'              => 'd123rk29d0stfj.cloudfront.net',
                'EvaluateTargetHealth' => 0,
                'HostedZoneId'         => 'Z2FDTNDATAQYW2'
              },
              'Name' => 'example.com',
              'Type' => 'A'
            }
          }
        ],
        'Comment' => 'CloudFront distribution for example.com'
      },
      'HostedZoneId' => 'Z3M3LMPEXAMPLE'
    );

    # Results:
    my $ChangeInfo = $ChangeResourceRecordSetsResponse->ChangeInfo;

  # Returns a L<Paws::Route53::ChangeResourceRecordSetsResponse> object.
  # To create weighted alias resource record sets
  # The following example creates two weighted alias resource record sets that
  # route traffic to ELB load balancers. The resource with a Weight of 100 will
  # get 1/3rd of traffic (100/100+200), and the other resource will get the rest
  # of the traffic for example.com.
    my $ChangeResourceRecordSetsResponse = $route53->ChangeResourceRecordSets(
      'ChangeBatch' => {
        'Changes' => [

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'AliasTarget' => {
                'DNSName' =>
                  'example-com-123456789.us-east-2.elb.amazonaws.com ',
                'EvaluateTargetHealth' => 1,
                'HostedZoneId'         => 'Z3AADJGX6KTTL2'
              },
              'Name'          => 'example.com',
              'SetIdentifier' => 'Ohio region',
              'Type'          => 'A',
              'Weight'        => 100
            }
          },

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'AliasTarget' => {
                'DNSName' =>
                  'example-com-987654321.us-west-2.elb.amazonaws.com ',
                'EvaluateTargetHealth' => 1,
                'HostedZoneId'         => 'Z1H1FL5HABSF5'
              },
              'Name'          => 'example.com',
              'SetIdentifier' => 'Oregon region',
              'Type'          => 'A',
              'Weight'        => 200
            }
          }
        ],
        'Comment' => 'ELB load balancers for example.com'
      },
      'HostedZoneId' => 'Z3M3LMPEXAMPLE'
    );

    # Results:
    my $ChangeInfo = $ChangeResourceRecordSetsResponse->ChangeInfo;

# Returns a L<Paws::Route53::ChangeResourceRecordSetsResponse> object.
# To create latency resource record sets
# The following example creates two latency resource record sets that route
# traffic to EC2 instances. Traffic for example.com is routed either to the Ohio
# region or the Oregon region, depending on the latency between the user and
# those regions.
    my $ChangeResourceRecordSetsResponse = $route53->ChangeResourceRecordSets(
      'ChangeBatch' => {
        'Changes' => [

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'HealthCheckId'   => 'abcdef11-2222-3333-4444-555555fedcba',
              'Name'            => 'example.com',
              'Region'          => 'us-east-2',
              'ResourceRecords' => [

                {
                  'Value' => '192.0.2.44'
                }
              ],
              'SetIdentifier' => 'Ohio region',
              'TTL'           => 60,
              'Type'          => 'A'
            }
          },

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'HealthCheckId'   => 'abcdef66-7777-8888-9999-000000fedcba',
              'Name'            => 'example.com',
              'Region'          => 'us-west-2',
              'ResourceRecords' => [

                {
                  'Value' => '192.0.2.45'
                }
              ],
              'SetIdentifier' => 'Oregon region',
              'TTL'           => 60,
              'Type'          => 'A'
            }
          }
        ],
        'Comment' => 'EC2 instances for example.com'
      },
      'HostedZoneId' => 'Z3M3LMPEXAMPLE'
    );

    # Results:
    my $ChangeInfo = $ChangeResourceRecordSetsResponse->ChangeInfo;

    # Returns a L<Paws::Route53::ChangeResourceRecordSetsResponse> object.
    # To create latency alias resource record sets
    # The following example creates two latency alias resource record sets that
    # route traffic for example.com to ELB load balancers. Requests are routed
    # either to the Ohio region or the Oregon region, depending on the latency
    # between the user and those regions.
    my $ChangeResourceRecordSetsResponse = $route53->ChangeResourceRecordSets(
      'ChangeBatch' => {
        'Changes' => [

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'AliasTarget' => {
                'DNSName' =>
                  'example-com-123456789.us-east-2.elb.amazonaws.com ',
                'EvaluateTargetHealth' => 1,
                'HostedZoneId'         => 'Z3AADJGX6KTTL2'
              },
              'Name'          => 'example.com',
              'Region'        => 'us-east-2',
              'SetIdentifier' => 'Ohio region',
              'Type'          => 'A'
            }
          },

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'AliasTarget' => {
                'DNSName' =>
                  'example-com-987654321.us-west-2.elb.amazonaws.com ',
                'EvaluateTargetHealth' => 1,
                'HostedZoneId'         => 'Z1H1FL5HABSF5'
              },
              'Name'          => 'example.com',
              'Region'        => 'us-west-2',
              'SetIdentifier' => 'Oregon region',
              'Type'          => 'A'
            }
          }
        ],
        'Comment' => 'ELB load balancers for example.com'
      },
      'HostedZoneId' => 'Z3M3LMPEXAMPLE'
    );

    # Results:
    my $ChangeInfo = $ChangeResourceRecordSetsResponse->ChangeInfo;

# Returns a L<Paws::Route53::ChangeResourceRecordSetsResponse> object.
# To create failover resource record sets
# The following example creates primary and secondary failover resource record
# sets that route traffic to EC2 instances. Traffic is generally routed to the
# primary resource, in the Ohio region. If that resource is unavailable, traffic
# is routed to the secondary resource, in the Oregon region.
    my $ChangeResourceRecordSetsResponse = $route53->ChangeResourceRecordSets(
      'ChangeBatch' => {
        'Changes' => [

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'Failover'        => 'PRIMARY',
              'HealthCheckId'   => 'abcdef11-2222-3333-4444-555555fedcba',
              'Name'            => 'example.com',
              'ResourceRecords' => [

                {
                  'Value' => '192.0.2.44'
                }
              ],
              'SetIdentifier' => 'Ohio region',
              'TTL'           => 60,
              'Type'          => 'A'
            }
          },

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'Failover'        => 'SECONDARY',
              'HealthCheckId'   => 'abcdef66-7777-8888-9999-000000fedcba',
              'Name'            => 'example.com',
              'ResourceRecords' => [

                {
                  'Value' => '192.0.2.45'
                }
              ],
              'SetIdentifier' => 'Oregon region',
              'TTL'           => 60,
              'Type'          => 'A'
            }
          }
        ],
        'Comment' => 'Failover configuration for example.com'
      },
      'HostedZoneId' => 'Z3M3LMPEXAMPLE'
    );

    # Results:
    my $ChangeInfo = $ChangeResourceRecordSetsResponse->ChangeInfo;

   # Returns a L<Paws::Route53::ChangeResourceRecordSetsResponse> object.
   # To create failover alias resource record sets
   # The following example creates primary and secondary failover alias resource
   # record sets that route traffic to ELB load balancers. Traffic is generally
   # routed to the primary resource, in the Ohio region. If that resource is
   # unavailable, traffic is routed to the secondary resource, in the Oregon
   # region.
    my $ChangeResourceRecordSetsResponse = $route53->ChangeResourceRecordSets(
      'ChangeBatch' => {
        'Changes' => [

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'AliasTarget' => {
                'DNSName' =>
                  'example-com-123456789.us-east-2.elb.amazonaws.com ',
                'EvaluateTargetHealth' => 1,
                'HostedZoneId'         => 'Z3AADJGX6KTTL2'
              },
              'Failover'      => 'PRIMARY',
              'Name'          => 'example.com',
              'SetIdentifier' => 'Ohio region',
              'Type'          => 'A'
            }
          },

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'AliasTarget' => {
                'DNSName' =>
                  'example-com-987654321.us-west-2.elb.amazonaws.com ',
                'EvaluateTargetHealth' => 1,
                'HostedZoneId'         => 'Z1H1FL5HABSF5'
              },
              'Failover'      => 'SECONDARY',
              'Name'          => 'example.com',
              'SetIdentifier' => 'Oregon region',
              'Type'          => 'A'
            }
          }
        ],
        'Comment' => 'Failover alias configuration for example.com'
      },
      'HostedZoneId' => 'Z3M3LMPEXAMPLE'
    );

    # Results:
    my $ChangeInfo = $ChangeResourceRecordSetsResponse->ChangeInfo;

  # Returns a L<Paws::Route53::ChangeResourceRecordSetsResponse> object.
  # To create geolocation resource record sets
  # The following example creates four geolocation resource record sets that use
  # IPv4 addresses to route traffic to resources such as web servers running on
  # EC2 instances. Traffic is routed to one of four IP addresses, for North
  # America (NA), for South America (SA), for Europe (EU), and for all other
  # locations (*).
    my $ChangeResourceRecordSetsResponse = $route53->ChangeResourceRecordSets(
      'ChangeBatch' => {
        'Changes' => [

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'GeoLocation' => {
                'ContinentCode' => 'NA'
              },
              'Name'            => 'example.com',
              'ResourceRecords' => [

                {
                  'Value' => '192.0.2.44'
                }
              ],
              'SetIdentifier' => 'North America',
              'TTL'           => 60,
              'Type'          => 'A'
            }
          },

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'GeoLocation' => {
                'ContinentCode' => 'SA'
              },
              'Name'            => 'example.com',
              'ResourceRecords' => [

                {
                  'Value' => '192.0.2.45'
                }
              ],
              'SetIdentifier' => 'South America',
              'TTL'           => 60,
              'Type'          => 'A'
            }
          },

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'GeoLocation' => {
                'ContinentCode' => 'EU'
              },
              'Name'            => 'example.com',
              'ResourceRecords' => [

                {
                  'Value' => '192.0.2.46'
                }
              ],
              'SetIdentifier' => 'Europe',
              'TTL'           => 60,
              'Type'          => 'A'
            }
          },

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'GeoLocation' => {
                'CountryCode' => '*'
              },
              'Name'            => 'example.com',
              'ResourceRecords' => [

                {
                  'Value' => '192.0.2.47'
                }
              ],
              'SetIdentifier' => 'Other locations',
              'TTL'           => 60,
              'Type'          => 'A'
            }
          }
        ],
        'Comment' => 'Geolocation configuration for example.com'
      },
      'HostedZoneId' => 'Z3M3LMPEXAMPLE'
    );

    # Results:
    my $ChangeInfo = $ChangeResourceRecordSetsResponse->ChangeInfo;

# Returns a L<Paws::Route53::ChangeResourceRecordSetsResponse> object.
# To create geolocation alias resource record sets
# The following example creates four geolocation alias resource record sets that
# route traffic to ELB load balancers. Traffic is routed to one of four IP
# addresses, for North America (NA), for South America (SA), for Europe (EU),
# and for all other locations (*).
    my $ChangeResourceRecordSetsResponse = $route53->ChangeResourceRecordSets(
      'ChangeBatch' => {
        'Changes' => [

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'AliasTarget' => {
                'DNSName' =>
                  'example-com-123456789.us-east-2.elb.amazonaws.com ',
                'EvaluateTargetHealth' => 1,
                'HostedZoneId'         => 'Z3AADJGX6KTTL2'
              },
              'GeoLocation' => {
                'ContinentCode' => 'NA'
              },
              'Name'          => 'example.com',
              'SetIdentifier' => 'North America',
              'Type'          => 'A'
            }
          },

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'AliasTarget' => {
                'DNSName' =>
                  'example-com-234567890.sa-east-1.elb.amazonaws.com ',
                'EvaluateTargetHealth' => 1,
                'HostedZoneId'         => 'Z2P70J7HTTTPLU'
              },
              'GeoLocation' => {
                'ContinentCode' => 'SA'
              },
              'Name'          => 'example.com',
              'SetIdentifier' => 'South America',
              'Type'          => 'A'
            }
          },

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'AliasTarget' => {
                'DNSName' =>
                  'example-com-234567890.eu-central-1.elb.amazonaws.com ',
                'EvaluateTargetHealth' => 1,
                'HostedZoneId'         => 'Z215JYRZR1TBD5'
              },
              'GeoLocation' => {
                'ContinentCode' => 'EU'
              },
              'Name'          => 'example.com',
              'SetIdentifier' => 'Europe',
              'Type'          => 'A'
            }
          },

          {
            'Action'            => 'CREATE',
            'ResourceRecordSet' => {
              'AliasTarget' => {
                'DNSName' =>
                  'example-com-234567890.ap-southeast-1.elb.amazonaws.com ',
                'EvaluateTargetHealth' => 1,
                'HostedZoneId'         => 'Z1LMS91P8CMLE5'
              },
              'GeoLocation' => {
                'CountryCode' => '*'
              },
              'Name'          => 'example.com',
              'SetIdentifier' => 'Other locations',
              'Type'          => 'A'
            }
          }
        ],
        'Comment' => 'Geolocation alias configuration for example.com'
      },
      'HostedZoneId' => 'Z3M3LMPEXAMPLE'
    );

    # Results:
    my $ChangeInfo = $ChangeResourceRecordSetsResponse->ChangeInfo;

    # Returns a L<Paws::Route53::ChangeResourceRecordSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ChangeResourceRecordSets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeBatch => L<Paws::Route53::ChangeBatch>

A complex type that contains an optional comment and the C<Changes>
element.



=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that contains the resource record sets that
you want to change.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChangeResourceRecordSets in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

