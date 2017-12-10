package Paws::S3::WebsiteConfiguration;
  use Moose;
  has ErrorDocument => (is => 'ro', isa => 'Paws::S3::ErrorDocument');
  has IndexDocument => (is => 'ro', isa => 'Paws::S3::IndexDocument');
  has RedirectAllRequestsTo => (is => 'ro', isa => 'Paws::S3::RedirectAllRequestsTo');
  has RoutingRules => (is => 'ro', isa => 'ArrayRef[Paws::S3::RoutingRule]', request_name => 'RoutingRule', traits => ['NameInRequest']);
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

This class has no description

=head1 ATTRIBUTES


=head2 ErrorDocument => L<Paws::S3::ErrorDocument>

  


=head2 IndexDocument => L<Paws::S3::IndexDocument>

  


=head2 RedirectAllRequestsTo => L<Paws::S3::RedirectAllRequestsTo>

  


=head2 RoutingRules => ArrayRef[L<Paws::S3::RoutingRule>]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

