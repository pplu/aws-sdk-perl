# Generated from default/object.tt
package Paws::ServerlessRepo::ApplicationPage;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::ServerlessRepo::Types qw/ServerlessRepo_ApplicationSummary/;
  has Applications => (is => 'ro', isa => ArrayRef[ServerlessRepo_ApplicationSummary], required => 1);
  has NextToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Applications' => 1
                  },
  'NameInRequest' => {
                       'Applications' => 'applications',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'Applications' => {
                                   'class' => 'Paws::ServerlessRepo::ApplicationSummary',
                                   'type' => 'ArrayRef[ServerlessRepo_ApplicationSummary]'
                                 },
               'NextToken' => {
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

Paws::ServerlessRepo::ApplicationPage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::ApplicationPage object:

  $service_obj->Method(Att1 => { Applications => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::ApplicationPage object:

  $result = $service_obj->Method(...);
  $result->Att1->Applications

=head1 DESCRIPTION

A list of application details.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Applications => ArrayRef[ServerlessRepo_ApplicationSummary]

  An array of application summaries.


=head2 NextToken => Str

  The token to request the next page of results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

