# Generated from default/object.tt
package Paws::EKS::Update;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EKS::Types qw/EKS_UpdateParam EKS_ErrorDetail/;
  has CreatedAt => (is => 'ro', isa => Str);
  has Errors => (is => 'ro', isa => ArrayRef[EKS_ErrorDetail]);
  has Id => (is => 'ro', isa => Str);
  has Params => (is => 'ro', isa => ArrayRef[EKS_UpdateParam]);
  has Status => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'Id' => {
                         'type' => 'Str'
                       },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'type' => 'Str'
                           },
               'Params' => {
                             'class' => 'Paws::EKS::UpdateParam',
                             'type' => 'ArrayRef[EKS_UpdateParam]'
                           },
               'Errors' => {
                             'class' => 'Paws::EKS::ErrorDetail',
                             'type' => 'ArrayRef[EKS_ErrorDetail]'
                           }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'Id' => 'id',
                       'CreatedAt' => 'createdAt',
                       'Status' => 'status',
                       'Params' => 'params',
                       'Errors' => 'errors'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::Update

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::Update object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::Update object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

An object representing an asynchronous update.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The Unix epoch timestamp in seconds for when the update was created.


=head2 Errors => ArrayRef[EKS_ErrorDetail]

  Any errors associated with a C<Failed> update.


=head2 Id => Str

  A UUID that is used to track the update.


=head2 Params => ArrayRef[EKS_UpdateParam]

  A key-value map that contains the parameters associated with the
update.


=head2 Status => Str

  The current status of the update.


=head2 Type => Str

  The type of the update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

