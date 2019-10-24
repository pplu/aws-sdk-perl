# Generated from default/object.tt
package Paws::S3::RoutingRule;
  use Moo;
  use Types::Standard qw//;
  use Paws::S3::Types qw/S3_Redirect S3_Condition/;
  has Condition => (is => 'ro', isa => S3_Condition);
  has Redirect => (is => 'ro', isa => S3_Redirect, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Redirect' => {
                               'class' => 'Paws::S3::Redirect',
                               'type' => 'S3_Redirect'
                             },
               'Condition' => {
                                'class' => 'Paws::S3::Condition',
                                'type' => 'S3_Condition'
                              }
             },
  'IsRequired' => {
                    'Redirect' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::RoutingRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::RoutingRule object:

  $service_obj->Method(Att1 => { Condition => $value, ..., Redirect => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::RoutingRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

Specifies the redirect behavior and when a redirect is applied.

=head1 ATTRIBUTES


=head2 Condition => S3_Condition

  A container for describing a condition that must be met for the
specified redirect to apply. For example, 1. If request is for pages in
the C</docs> folder, redirect to the C</documents> folder. 2. If
request results in HTTP error 4xx, redirect request to another host
where you might process the error.


=head2 B<REQUIRED> Redirect => S3_Redirect

  Container for redirect information. You can redirect requests to
another host, to another page, or with another protocol. In the event
of an error, you can specify a different error code to return.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

