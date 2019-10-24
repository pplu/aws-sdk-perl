# Generated from default/object.tt
package Paws::S3::WebsiteConfiguration;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::S3::Types qw/S3_ErrorDocument S3_RoutingRule S3_RedirectAllRequestsTo S3_IndexDocument/;
  has ErrorDocument => (is => 'ro', isa => S3_ErrorDocument);
  has IndexDocument => (is => 'ro', isa => S3_IndexDocument);
  has RedirectAllRequestsTo => (is => 'ro', isa => S3_RedirectAllRequestsTo);
  has RoutingRules => (is => 'ro', isa => ArrayRef[S3_RoutingRule]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RedirectAllRequestsTo' => {
                                            'class' => 'Paws::S3::RedirectAllRequestsTo',
                                            'type' => 'S3_RedirectAllRequestsTo'
                                          },
               'IndexDocument' => {
                                    'class' => 'Paws::S3::IndexDocument',
                                    'type' => 'S3_IndexDocument'
                                  },
               'ErrorDocument' => {
                                    'class' => 'Paws::S3::ErrorDocument',
                                    'type' => 'S3_ErrorDocument'
                                  },
               'RoutingRules' => {
                                   'class' => 'Paws::S3::RoutingRule',
                                   'type' => 'ArrayRef[S3_RoutingRule]'
                                 }
             },
  'NameInRequest' => {
                       'RoutingRules' => 'RoutingRule'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::WebsiteConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::WebsiteConfiguration object:

  $service_obj->Method(Att1 => { ErrorDocument => $value, ..., RoutingRules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::WebsiteConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorDocument

=head1 DESCRIPTION

Specifies website configuration parameters for an Amazon S3 bucket.

=head1 ATTRIBUTES


=head2 ErrorDocument => S3_ErrorDocument

  The name of the error document for the website.


=head2 IndexDocument => S3_IndexDocument

  The name of the index document for the website.


=head2 RedirectAllRequestsTo => S3_RedirectAllRequestsTo

  The redirect behavior for every request to this bucket's website
endpoint.

If you specify this property, you can't specify any other property.


=head2 RoutingRules => ArrayRef[S3_RoutingRule]

  Rules that define when a redirect is applied and the redirect behavior.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

