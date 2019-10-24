# Generated from default/object.tt
package Paws::ServiceCatalog::ShareDetails;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ShareError/;
  has ShareErrors => (is => 'ro', isa => ArrayRef[ServiceCatalog_ShareError]);
  has SuccessfulShares => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SuccessfulShares' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'ShareErrors' => {
                                  'class' => 'Paws::ServiceCatalog::ShareError',
                                  'type' => 'ArrayRef[ServiceCatalog_ShareError]'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ShareDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ShareDetails object:

  $service_obj->Method(Att1 => { ShareErrors => $value, ..., SuccessfulShares => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ShareDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ShareErrors

=head1 DESCRIPTION

Information about the portfolio share operation.

=head1 ATTRIBUTES


=head2 ShareErrors => ArrayRef[ServiceCatalog_ShareError]

  List of errors.


=head2 SuccessfulShares => ArrayRef[Str|Undef]

  List of accounts for whom the operation succeeded.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

