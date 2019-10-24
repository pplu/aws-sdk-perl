# Generated from default/object.tt
package Paws::Support::RecentCaseCommunications;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Support::Types qw/Support_Communication/;
  has Communications => (is => 'ro', isa => ArrayRef[Support_Communication]);
  has NextToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Communications' => {
                                     'class' => 'Paws::Support::Communication',
                                     'type' => 'ArrayRef[Support_Communication]'
                                   }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Communications' => 'communications'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::RecentCaseCommunications

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::RecentCaseCommunications object:

  $service_obj->Method(Att1 => { Communications => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::RecentCaseCommunications object:

  $result = $service_obj->Method(...);
  $result->Att1->Communications

=head1 DESCRIPTION

The five most recent communications associated with the case.

=head1 ATTRIBUTES


=head2 Communications => ArrayRef[Support_Communication]

  The five most recent communications associated with the case.


=head2 NextToken => Str

  A resumption point for pagination.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

